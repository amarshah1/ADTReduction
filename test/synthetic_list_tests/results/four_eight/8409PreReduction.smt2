
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
(assert (and (is-Cons Nil) (= l2 l2) (= l1 Nil) (is-Cons Nil)) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l2 Nil) (= l1 Nil) (= l0 Nil)) )
(assert (= l0 Nil) )
(assert (is-Nil l0) )
(assert (or (is-Cons l2) (= l1 Nil) (= l1 l2)) )
(assert (= l0 Nil) )
(check-sat)