
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
(assert (and (= l2 Nil) (is-Cons l1) (is-Cons Nil)) )
(assert (is-Cons l0) )
(assert (and (= l3 Nil) (= l1 Nil) (is-Nil l3) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l2 Nil)) )
(assert (and (= l3 l0) (= l1 l3) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(check-sat)
