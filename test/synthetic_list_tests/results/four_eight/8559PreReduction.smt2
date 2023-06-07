
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (= l1 Nil) )
(assert (= l0 Nil) )
(assert (not (= l0 Nil)) )
(assert (or (is-Cons l1) (is-Cons l0)) )
(assert (= l2 l1) )
(assert (is-Cons Nil) )
(assert (not (= l3 Nil)) )
(assert (and (= l3 Nil) (= l1 Nil) (is-Cons Nil) (= l1 Nil)) )
(check-sat)
