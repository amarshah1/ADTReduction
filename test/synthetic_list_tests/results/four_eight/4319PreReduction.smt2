
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
(assert (not (= l3 Nil)) )
(assert (= l0 Nil) )
(assert (= l0 l2) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (= l1 Nil) (= l3 l1)) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (is-Cons l1) (= l3 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
