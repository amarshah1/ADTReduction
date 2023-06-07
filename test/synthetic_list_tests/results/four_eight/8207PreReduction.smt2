
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
(assert (not (= l1 Nil)) )
(assert (and (= l1 l1) (= l3 Nil) (= l3 Nil) (= l0 Nil)) )
(assert (or (is-Cons l1) (is-Cons l3) (= l2 Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (= l1 Nil) (= l1 Nil) (= l3 Nil)) )
(assert (is-Cons l1) )
(assert (is-Nil l0) )
(assert (or (is-Cons l3) (is-Cons l0)) )
(check-sat)
