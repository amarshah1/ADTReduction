
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
(assert (is-Cons Nil) )
(assert (or (= l3 l1) (= l1 Nil)) )
(assert (and (is-Cons Nil) (is-Cons l0) (is-Cons Nil)) )
(assert (not (= l3 Nil)) )
(assert (= l0 Nil) )
(assert (not (= l0 Nil)) )
(assert (= l1 Nil) )
(assert (not (= l0 Nil)) )
(check-sat)
