
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
(assert (and (is-Cons Nil) (= l2 l3)) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (and (is-Cons Nil) (is-Cons l1) (= l1 l1) (is-Cons Nil)) )
(assert (or (is-Cons Nil) (= l0 l1)) )
(assert (or (is-Cons Nil) (= l2 Nil) (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(check-sat)
